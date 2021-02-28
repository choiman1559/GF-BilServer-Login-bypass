.class public final Lcom/paypal/android/sdk/as;
.super Ljava/lang/Object;


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/Boolean;

.field public C:Ljava/lang/String;

.field public D:Ljava/lang/String;

.field public E:Ljava/lang/Boolean;

.field public F:Ljava/lang/String;

.field public G:Ljava/lang/String;

.field public H:J

.field public I:J

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/Boolean;

.field public L:Ljava/lang/Integer;

.field public M:I

.field public N:I

.field public O:Ljava/lang/String;

.field public P:I

.field public Q:Ljava/lang/String;

.field public R:Ljava/lang/Boolean;

.field public S:Ljava/lang/Boolean;

.field public T:Ljava/lang/String;

.field public U:J

.field public V:J

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Ljava/lang/String;

.field public Z:Ljava/lang/String;

.field public a:Ljava/lang/String;

.field public aa:Ljava/lang/String;

.field public ab:Ljava/lang/String;

.field public ac:Ljava/lang/String;

.field public ad:Ljava/lang/String;

.field public ae:Ljava/lang/String;

.field public af:Ljava/util/List;

.field public ag:Ljava/util/Map;

.field private ah:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Ljava/lang/String;

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:J

.field public o:Ljava/lang/String;

.field public p:Ljava/util/List;

.field public q:Ljava/util/List;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Landroid/location/Location;

.field public v:I

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v2, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/paypal/android/sdk/as;->d:I

    iput v2, p0, Lcom/paypal/android/sdk/as;->f:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/paypal/android/sdk/as;->n:J

    iput v2, p0, Lcom/paypal/android/sdk/as;->v:I

    iput v2, p0, Lcom/paypal/android/sdk/as;->M:I

    iput v2, p0, Lcom/paypal/android/sdk/as;->N:I

    iput v2, p0, Lcom/paypal/android/sdk/as;->P:I

    const-string v0, "Android"

    iput-object v0, p0, Lcom/paypal/android/sdk/as;->x:Ljava/lang/String;

    const-string v0, "full"

    iput-object v0, p0, Lcom/paypal/android/sdk/as;->ah:Ljava/lang/String;

    return-void
.end method

.method private static a(Landroid/location/Location;)Lorg/json/JSONObject;
    .registers 7

    const/4 v1, 0x0

    if-eqz p0, :cond_4c

    :try_start_3
    new-instance v0, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "{\"lat\":"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"lng\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"acc\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"timestamp\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_4b
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_4b} :catch_4e

    :goto_4b
    return-object v0

    :cond_4c
    move-object v0, v1

    goto :goto_4b

    :catch_4e
    move-exception v0

    move-object v0, v1

    goto :goto_4b
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 6

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->ag:Ljava/util/Map;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/paypal/android/sdk/as;->ag:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :try_start_1b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_28} :catch_29

    goto :goto_f

    :catch_29
    move-exception v0

    invoke-static {v3, v3, v0}, Lcom/paypal/android/sdk/bm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_2e
    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .registers 10

    const/4 v8, -0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_7
    const-string v2, "app_guid"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "app_version"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "base_station_id"

    iget v2, p0, Lcom/paypal/android/sdk/as;->d:I

    if-ne v2, v8, :cond_1dc

    move-object v2, v1

    :goto_23
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "bssid"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->e:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "bssid_array"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->af:Ljava/util/List;

    if-nez v2, :cond_1e4

    move-object v2, v1

    :goto_34
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cell_id"

    iget v2, p0, Lcom/paypal/android/sdk/as;->f:I

    if-ne v2, v8, :cond_1ef

    move-object v2, v1

    :goto_3e
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "comp_version"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "conf_url"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->h:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "conf_version"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->i:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "conn_type"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->j:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "dc_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->ad:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_model"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->l:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "device_name"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->m:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "device_uptime"

    iget-wide v4, p0, Lcom/paypal/android/sdk/as;->n:J

    const-wide/16 v6, -0x1

    cmp-long v2, v4, v6

    if-nez v2, :cond_1f7

    move-object v2, v1

    :goto_84
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ip_addrs"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->o:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "ip_addresses"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->p:Ljava/util/List;

    if-nez v2, :cond_1ff

    move-object v2, v1

    :goto_95
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "known_apps"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->q:Ljava/util/List;

    if-nez v2, :cond_208

    move-object v2, v1

    :goto_9f
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "linker_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->r:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "locale_country"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "locale_lang"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "location"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->u:Landroid/location/Location;

    invoke-static {v3}, Lcom/paypal/android/sdk/as;->a(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "location_area_code"

    iget v2, p0, Lcom/paypal/android/sdk/as;->v:I

    if-ne v2, v8, :cond_211

    move-object v2, v1

    :goto_c9
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "mac_addrs"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->w:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os_type"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->x:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "os_version"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->y:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "payload_type"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->ah:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "phone_type"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "risk_comp_session_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "roaming"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->B:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "sim_operator_name"

    const-string v2, ""

    iget-object v4, p0, Lcom/paypal/android/sdk/as;->C:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_219

    move-object v2, v1

    :goto_10a
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sim_serial_number"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->D:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "sms_enabled"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->E:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ssid"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->F:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cdma_network_id"

    iget v2, p0, Lcom/paypal/android/sdk/as;->N:I

    if-ne v2, v8, :cond_21d

    move-object v2, v1

    :goto_129
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "cdma_system_id"

    iget v2, p0, Lcom/paypal/android/sdk/as;->M:I

    if-ne v2, v8, :cond_225

    move-object v2, v1

    :goto_133
    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "subscriber_id"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->G:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "timestamp"

    iget-wide v4, p0, Lcom/paypal/android/sdk/as;->H:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "total_storage_space"

    iget-wide v4, p0, Lcom/paypal/android/sdk/as;->I:J

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "tz_name"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->J:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "ds"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->K:Ljava/lang/Boolean;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "tz"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->L:Ljava/lang/Integer;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "network_operator"

    iget-object v3, p0, Lcom/paypal/android/sdk/as;->O:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "source_app"

    iget v3, p0, Lcom/paypal/android/sdk/as;->P:I

    if-ne v3, v8, :cond_22d

    :goto_16d
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source_app_version"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_emulator"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->R:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_rooted"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->S:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pairing_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->T:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_first_install_time"

    iget-wide v2, p0, Lcom/paypal/android/sdk/as;->U:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "app_last_update_time"

    iget-wide v2, p0, Lcom/paypal/android/sdk/as;->V:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "android_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->W:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serial_number"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "notif_token"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "bluetooth_mac_addrs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gsf_id"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "VPN_setting"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "proxy_setting"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "c"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "pm"

    iget-object v2, p0, Lcom/paypal/android/sdk/as;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/as;->a(Lorg/json/JSONObject;)V

    :goto_1db
    return-object v0

    :cond_1dc
    iget v2, p0, Lcom/paypal/android/sdk/as;->d:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_23

    :cond_1e4
    new-instance v2, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/paypal/android/sdk/as;->af:Ljava/util/List;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_34

    :catch_1ed
    move-exception v1

    goto :goto_1db

    :cond_1ef
    iget v2, p0, Lcom/paypal/android/sdk/as;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_3e

    :cond_1f7
    iget-wide v4, p0, Lcom/paypal/android/sdk/as;->n:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_84

    :cond_1ff
    new-instance v2, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/paypal/android/sdk/as;->p:Ljava/util/List;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_95

    :cond_208
    new-instance v2, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/paypal/android/sdk/as;->q:Ljava/util/List;

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_9f

    :cond_211
    iget v2, p0, Lcom/paypal/android/sdk/as;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_c9

    :cond_219
    iget-object v2, p0, Lcom/paypal/android/sdk/as;->C:Ljava/lang/String;

    goto/16 :goto_10a

    :cond_21d
    iget v2, p0, Lcom/paypal/android/sdk/as;->N:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_129

    :cond_225
    iget v2, p0, Lcom/paypal/android/sdk/as;->M:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto/16 :goto_133

    :cond_22d
    iget v1, p0, Lcom/paypal/android/sdk/as;->P:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_232
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_232} :catch_1ed

    move-result-object v1

    goto/16 :goto_16d
.end method

.method public final a(Lcom/paypal/android/sdk/as;)Lorg/json/JSONObject;
    .registers 8

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "is_emulator"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->R:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "is_rooted"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->S:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app_guid"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "risk_comp_session_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timestamp"

    iget-wide v2, p1, Lcom/paypal/android/sdk/as;->H:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "payload_type"

    const-string v2, "incremental"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "source_app"

    iget v2, p1, Lcom/paypal/android/sdk/as;->P:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "pairing_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->T:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-direct {p0, v0}, Lcom/paypal/android/sdk/as;->a(Lorg/json/JSONObject;)V

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->b:Ljava/lang/String;

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string v1, "app_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_55
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->c:Ljava/lang/String;

    if-eqz v1, :cond_6a

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->c:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6a

    const-string v1, "app_version"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6a
    iget v1, p0, Lcom/paypal/android/sdk/as;->d:I

    iget v2, p1, Lcom/paypal/android/sdk/as;->d:I

    if-eq v1, v2, :cond_77

    const-string v1, "base_station_id"

    iget v2, p1, Lcom/paypal/android/sdk/as;->d:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_77
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->e:Ljava/lang/String;

    if-eqz v1, :cond_8c

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8c

    const-string v1, "bssid"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8c
    iget v1, p0, Lcom/paypal/android/sdk/as;->f:I

    iget v2, p1, Lcom/paypal/android/sdk/as;->f:I

    if-eq v1, v2, :cond_99

    const-string v1, "cell_id"

    iget v2, p1, Lcom/paypal/android/sdk/as;->f:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_99
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->g:Ljava/lang/String;

    if-eqz v1, :cond_ae

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->g:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ae

    const-string v1, "comp_version"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ae
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->i:Ljava/lang/String;

    if-eqz v1, :cond_c3

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->i:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c3

    const-string v1, "conf_version"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c3
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->h:Ljava/lang/String;

    if-eqz v1, :cond_d8

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->h:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d8

    const-string v1, "conf_url"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d8
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->j:Ljava/lang/String;

    if-eqz v1, :cond_ed

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ed

    const-string v1, "conn_type"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_ed
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->k:Ljava/lang/String;

    if-eqz v1, :cond_102

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_102

    const-string v1, "device_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_102
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->l:Ljava/lang/String;

    if-eqz v1, :cond_117

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->l:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_117

    const-string v1, "device_model"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_117
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->m:Ljava/lang/String;

    if-eqz v1, :cond_12c

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->m:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12c

    const-string v1, "device_name"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->m:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_12c
    iget-wide v2, p0, Lcom/paypal/android/sdk/as;->n:J

    iget-wide v4, p1, Lcom/paypal/android/sdk/as;->n:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_13b

    const-string v1, "device_uptime"

    iget-wide v2, p1, Lcom/paypal/android/sdk/as;->n:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_13b
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->o:Ljava/lang/String;

    if-eqz v1, :cond_150

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->o:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_150

    const-string v1, "ip_addrs"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_150
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->p:Ljava/util/List;

    if-eqz v1, :cond_176

    iget-object v1, p1, Lcom/paypal/android/sdk/as;->p:Ljava/util/List;

    if-eqz v1, :cond_176

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->p:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->p:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_176

    const-string v1, "ip_addresses"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/paypal/android/sdk/as;->p:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_176
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->q:Ljava/util/List;

    if-eqz v1, :cond_19c

    iget-object v1, p1, Lcom/paypal/android/sdk/as;->q:Ljava/util/List;

    if-eqz v1, :cond_19c

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->q:Ljava/util/List;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->q:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19c

    const-string v1, "known_apps"

    new-instance v2, Lorg/json/JSONArray;

    iget-object v3, p1, Lcom/paypal/android/sdk/as;->q:Ljava/util/List;

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_19c
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->r:Ljava/lang/String;

    if-eqz v1, :cond_1b1

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->r:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->r:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b1

    const-string v1, "linker_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->r:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1b1
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->s:Ljava/lang/String;

    if-eqz v1, :cond_1c6

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->s:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->s:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c6

    const-string v1, "locale_country"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1c6
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->t:Ljava/lang/String;

    if-eqz v1, :cond_1db

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->t:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1db

    const-string v1, "locale_lang"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->t:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1db
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->u:Landroid/location/Location;

    if-eqz v1, :cond_200

    iget-object v1, p1, Lcom/paypal/android/sdk/as;->u:Landroid/location/Location;

    if-eqz v1, :cond_200

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->u:Landroid/location/Location;

    invoke-virtual {v1}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->u:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_200

    const-string v1, "location"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->u:Landroid/location/Location;

    invoke-static {v2}, Lcom/paypal/android/sdk/as;->a(Landroid/location/Location;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_200
    iget v1, p0, Lcom/paypal/android/sdk/as;->v:I

    iget v2, p1, Lcom/paypal/android/sdk/as;->v:I

    if-eq v1, v2, :cond_20d

    const-string v1, "location_area_code"

    iget v2, p1, Lcom/paypal/android/sdk/as;->v:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_20d
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->w:Ljava/lang/String;

    if-eqz v1, :cond_222

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->w:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->w:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_222

    const-string v1, "mac_addrs"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->w:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_222
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->x:Ljava/lang/String;

    if-eqz v1, :cond_237

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->x:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_237

    const-string v1, "os_type"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_237
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->y:Ljava/lang/String;

    if-eqz v1, :cond_24c

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->y:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24c

    const-string v1, "os_version"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_24c
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;

    if-eqz v1, :cond_261

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_261

    const-string v1, "phone_type"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_261
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->B:Ljava/lang/Boolean;

    if-eqz v1, :cond_276

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->B:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->B:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_276

    const-string v1, "roaming"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->B:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_276
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->C:Ljava/lang/String;

    if-eqz v1, :cond_28b

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->C:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28b

    const-string v1, "sim_operator_name"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->C:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_28b
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->D:Ljava/lang/String;

    if-eqz v1, :cond_2a0

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->D:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->D:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2a0

    const-string v1, "sim_serial_number"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->D:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2a0
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->E:Ljava/lang/Boolean;

    if-eqz v1, :cond_2b5

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->E:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->E:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b5

    const-string v1, "sms_enabled"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->E:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2b5
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->F:Ljava/lang/String;

    if-eqz v1, :cond_2ca

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->F:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->F:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2ca

    const-string v1, "ssid"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->F:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2ca
    iget v1, p0, Lcom/paypal/android/sdk/as;->N:I

    iget v2, p1, Lcom/paypal/android/sdk/as;->N:I

    if-eq v1, v2, :cond_2d7

    const-string v1, "cdma_network_id"

    iget v2, p1, Lcom/paypal/android/sdk/as;->N:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2d7
    iget v1, p0, Lcom/paypal/android/sdk/as;->M:I

    iget v2, p1, Lcom/paypal/android/sdk/as;->M:I

    if-eq v1, v2, :cond_2e4

    const-string v1, "cdma_system_id"

    iget v2, p1, Lcom/paypal/android/sdk/as;->M:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    :cond_2e4
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->G:Ljava/lang/String;

    if-eqz v1, :cond_2f9

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->G:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->G:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f9

    const-string v1, "subscriber_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->G:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2f9
    iget-wide v2, p0, Lcom/paypal/android/sdk/as;->I:J

    iget-wide v4, p1, Lcom/paypal/android/sdk/as;->I:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_308

    const-string v1, "total_storage_space"

    iget-wide v2, p1, Lcom/paypal/android/sdk/as;->I:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_308
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->J:Ljava/lang/String;

    if-eqz v1, :cond_31d

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->J:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->J:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31d

    const-string v1, "tz_name"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->J:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_31d
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->K:Ljava/lang/Boolean;

    if-eqz v1, :cond_332

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->K:Ljava/lang/Boolean;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->K:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_332

    const-string v1, "ds"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->K:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_332
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->L:Ljava/lang/Integer;

    if-eqz v1, :cond_347

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->L:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->L:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_347

    const-string v1, "tz"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->L:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_347
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->O:Ljava/lang/String;

    if-eqz v1, :cond_35c

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->O:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->O:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_35c

    const-string v1, "network_operator"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->O:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_35c
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->Q:Ljava/lang/String;

    if-eqz v1, :cond_371

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->Q:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->Q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_371

    const-string v1, "source_app_version"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->Q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_371
    iget-wide v2, p0, Lcom/paypal/android/sdk/as;->U:J

    iget-wide v4, p1, Lcom/paypal/android/sdk/as;->U:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_380

    const-string v1, "app_first_install_time"

    iget-wide v2, p1, Lcom/paypal/android/sdk/as;->U:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_380
    iget-wide v2, p0, Lcom/paypal/android/sdk/as;->V:J

    iget-wide v4, p1, Lcom/paypal/android/sdk/as;->V:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_38f

    const-string v1, "app_last_update_time"

    iget-wide v2, p1, Lcom/paypal/android/sdk/as;->V:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_38f
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->W:Ljava/lang/String;

    if-eqz v1, :cond_3a4

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->W:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->W:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a4

    const-string v1, "android_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->W:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3a4
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->Y:Ljava/lang/String;

    if-eqz v1, :cond_3b9

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->Y:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->Y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3b9

    const-string v1, "serial_number"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->Y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3b9
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->X:Ljava/lang/String;

    if-eqz v1, :cond_3ce

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->X:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->X:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3ce

    const-string v1, "notif_token"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->X:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3ce
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->Z:Ljava/lang/String;

    if-eqz v1, :cond_3e3

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->Z:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->Z:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3e3

    const-string v1, "gsf_id"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->Z:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3e3
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->ab:Ljava/lang/String;

    if-eqz v1, :cond_3f8

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->ab:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f8

    const-string v1, "VPN_setting"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3f8
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->aa:Ljava/lang/String;

    if-eqz v1, :cond_40d

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->aa:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->aa:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40d

    const-string v1, "proxy_setting"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->aa:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_40d
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->ac:Ljava/lang/String;

    if-eqz v1, :cond_422

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->ac:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->ac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_422

    const-string v1, "c"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_422
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->ae:Ljava/lang/String;

    if-eqz v1, :cond_437

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->ae:Ljava/lang/String;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->ae:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_437

    const-string v1, "pm"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_437
    iget-object v1, p0, Lcom/paypal/android/sdk/as;->af:Ljava/util/List;

    if-eqz v1, :cond_44c

    iget-object v1, p0, Lcom/paypal/android/sdk/as;->af:Ljava/util/List;

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->af:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_44c

    const-string v1, "bssid_arr"

    iget-object v2, p1, Lcom/paypal/android/sdk/as;->af:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_44c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_44c} :catch_44d

    :cond_44c
    :goto_44c
    return-object v0

    :catch_44d
    move-exception v1

    goto :goto_44c
.end method
