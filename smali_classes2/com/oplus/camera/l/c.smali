.class public Lcom/oplus/camera/l/c;
.super Ljava/lang/Object;
.source "RegionCommonFeatureAdapter.java"


# static fields
.field private static final a:Ljava/lang/String; = "c"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/oplus/camera/q$a;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/camera/q$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x3

    .line 67
    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    .line 73
    new-array v3, v1, [Ljava/lang/String;

    iget-object v7, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    aput-object v7, v3, v4

    iget-object v7, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    aput-object v7, v3, v5

    iget-object v7, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    aput-object v7, v3, v6

    .line 79
    invoke-static {}, Lcom/oplus/camera/util/Util;->l()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/oplus/camera/util/Util;->t(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 82
    new-array v2, v1, [Ljava/lang/String;

    iget-object v3, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    aput-object v3, v2, v5

    iget-object v3, p1, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    aput-object v3, v2, v6

    .line 88
    new-array v3, v1, [Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    aput-object v1, v3, v4

    iget-object v1, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    aput-object v1, v3, v5

    iget-object v1, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    aput-object v1, v3, v6

    .line 95
    :cond_0
    invoke-static {p0, p1}, Lcom/oplus/camera/l/c;->a(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z

    move-result v1

    const-string v8, "\uff0c"

    if-eqz v1, :cond_3

    .line 98
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f10043c

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 100
    iget-object p2, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p0

    :cond_1
    if-eqz v7, :cond_2

    .line 104
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p1, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    if-eqz v1, :cond_4

    move-object v2, v3

    :cond_4
    if-eqz v7, :cond_8

    .line 112
    array-length p0, v2

    sub-int/2addr p0, v5

    move v3, v4

    :goto_1
    if-ltz p0, :cond_c

    .line 113
    aget-object v7, v2, p0

    .line 115
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_2

    :cond_5
    if-nez v1, :cond_6

    if-ne v6, v3, :cond_6

    goto :goto_5

    .line 123
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_7

    .line 124
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_7
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .line 131
    :cond_8
    array-length p0, v2

    move v3, v4

    move v7, v3

    :goto_3
    if-ge v3, p0, :cond_c

    aget-object v8, v2, v3

    .line 132
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_4

    :cond_9
    if-nez v1, :cond_a

    if-ge v5, v7, :cond_a

    goto :goto_5

    .line 140
    :cond_a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_b

    const-string v9, ", "

    .line 141
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    :cond_b
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v7, 0x1

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 150
    :cond_c
    :goto_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_e

    .line 151
    new-array p0, v6, [Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    aput-object v1, p0, v4

    iget-object p1, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    aput-object p1, p0, v5

    .line 156
    array-length p1, p0

    :goto_6
    if-ge v4, p1, :cond_e

    aget-object v1, p0, v4

    .line 157
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_e
    :goto_7
    const-string p0, ""

    if-nez p3, :cond_f

    .line 165
    sget-object p1, Lcom/oplus/camera/l/c;->a:Ljava/lang/String;

    const-string p2, "parseExportVersionAddress, sensor area is loading"

    invoke-static {p1, p2}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 170
    :cond_f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 172
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_10
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 174
    sget-object p1, Lcom/oplus/camera/l/c;->a:Ljava/lang/String;

    const-string p3, "parseExportVersionAddress, here is sensor area"

    invoke-static {p1, p3}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 178
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_11
    return-object p0

    :cond_12
    return-object p1
.end method

.method public static a(Landroid/content/Context;Lcom/oplus/camera/q$a;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/oplus/camera/q$a;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 60
    invoke-static {p0, p1, p3, p4}, Lcom/oplus/camera/l/c;->a(Landroid/content/Context;Lcom/oplus/camera/q$a;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public static a(Landroid/app/Activity;ZLcom/oplus/camera/ComboPreferences;I)V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/ContentResolver;I)V
    .locals 1

    const-string v0, "oplus_is_camera_recording"

    .line 42
    invoke-static {p0, v0, p1}, Lcom/oplus/d/a$d;->c(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static a(Landroid/os/Bundle;Lcom/coui/appcompat/dialog/app/b;Lcom/coui/appcompat/dialog/app/b;Lcom/coui/appcompat/dialog/app/b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 226
    invoke-virtual {p1}, Lcom/coui/appcompat/dialog/app/b;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string p2, "key_location_guide_dialog_show"

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public static a(Lcom/coui/appcompat/preference/COUIPreferenceCategory;Lcom/coui/appcompat/preference/COUIJumpPreference;)V
    .locals 0

    .line 222
    invoke-virtual {p0, p1}, Lcom/coui/appcompat/preference/COUIPreferenceCategory;->d(Landroidx/preference/Preference;)Z

    return-void
.end method

.method public static a(Lcom/oplus/camera/statistics/model/CaptureMsgData;ZLcom/oplus/camera/q;)V
    .locals 0

    return-void
.end method

.method public static a(Lcom/oplus/camera/statistics/model/VideoRecordMsgData;ZLandroid/location/Location;)V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 193
    :cond_0
    iget-object v1, p1, Lcom/oplus/camera/q$a;->h:Ljava/lang/String;

    const-string v2, "TW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10043b

    .line 198
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 200
    iget-object v3, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    iget-object v3, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    .line 201
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    return v2

    :cond_4
    const v1, 0x7f0300aa

    .line 205
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 207
    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, p0, v3

    .line 208
    iget-object v5, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    iget-object v5, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    .line 209
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_6
    return v2

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    return v0
.end method

.method public static b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static g()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static j()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
