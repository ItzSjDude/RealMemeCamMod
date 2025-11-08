.class public Lcom/oplus/camera/util/h;
.super Ljava/lang/Object;
.source "LocationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/camera/util/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final f:Lcom/oplus/camera/util/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "guizhou"

    const-string v2, "gansu"

    const-string v3, "qinghai"

    const-string v4, "hainan"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/camera/util/h;->a:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "thailand"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/camera/util/h;->b:Ljava/util/ArrayList;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "goa"

    const-string v2, "tokyo"

    const-string v3, "t\u00f4ky\u00f4"

    const-string v4, "kyoto"

    const-string v5, "ky\u00f4to"

    const-string v6, "xinjiang"

    const-string v7, "tibet"

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/camera/util/h;->c:Ljava/util/ArrayList;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "xinjiang uygur zizhiqu"

    const-string v2, "xizang zizhiqu"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/oplus/camera/util/h;->d:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/oplus/camera/util/h;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Lcom/oplus/camera/util/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/camera/util/h$a;-><init>(Lcom/oplus/camera/util/h$1;)V

    sput-object v0, Lcom/oplus/camera/util/h;->f:Lcom/oplus/camera/util/h$a;

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/location/Location;)Lcom/oplus/camera/q$a;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    const-string p1, "LocationHelper"

    if-nez p0, :cond_1

    const-string p0, "parceLastKnownLocation, geo is null"

    .line 72
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const-string v1, "address"

    .line 77
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    .line 80
    instance-of v1, p0, Landroid/location/Address;

    if-eqz v1, :cond_2

    .line 81
    move-object v0, p0

    check-cast v0, Landroid/location/Address;

    const-string p0, "parceLastKnownLocation"

    .line 83
    invoke-static {p1, p0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    :cond_2
    invoke-static {v0}, Lcom/oplus/camera/util/h;->a(Landroid/location/Address;)Lcom/oplus/camera/q$a;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static a(Landroid/location/Address;)Lcom/oplus/camera/q$a;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "LocationHelper"

    const-string v0, "getCameraAddress, address is null"

    .line 91
    invoke-static {p0, v0}, Lcom/oplus/camera/e;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 96
    :cond_0
    new-instance v0, Lcom/oplus/camera/q$a;

    invoke-direct {v0}, Lcom/oplus/camera/q$a;-><init>()V

    .line 97
    invoke-virtual {p0}, Landroid/location/Address;->getCountryName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q$a;->a(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/location/Address;->getAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q$a;->b(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Landroid/location/Address;->getSubAdminArea()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q$a;->c(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Landroid/location/Address;->getLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q$a;->d(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Landroid/location/Address;->getSubLocality()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q$a;->e(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Landroid/location/Address;->getThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q$a;->f(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Landroid/location/Address;->getSubThoroughfare()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oplus/camera/q$a;->g(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Landroid/location/Address;->getCountryCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/oplus/camera/q$a;->h(Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/oplus/camera/q$a;)Ljava/lang/String;
    .locals 5

    const-string v0, "LocationHelper"

    if-nez p1, :cond_0

    const-string p0, "getAddressInfoByAddress address is null"

    .line 111
    invoke-static {v0, p0}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 116
    :cond_0
    invoke-static {p0, p1}, Lcom/oplus/camera/util/h;->d(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {p0, p1}, Lcom/oplus/camera/util/h;->e(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    invoke-static {p0, p1}, Lcom/oplus/camera/util/h;->f(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1001f8

    .line 122
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 126
    :cond_2
    invoke-static {p0, p1}, Lcom/oplus/camera/util/h;->c(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f100233

    .line 128
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 132
    :cond_3
    iget-object v1, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 133
    iput-object v2, p1, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    .line 138
    :cond_4
    invoke-static {}, Lcom/oplus/camera/util/Util;->ak()Z

    move-result v1

    if-nez v1, :cond_6

    .line 139
    sget-object v1, Lcom/oplus/camera/util/h;->f:Lcom/oplus/camera/util/h$a;

    .line 140
    invoke-static {v1}, Lcom/oplus/camera/util/h$a;->a(Lcom/oplus/camera/util/h$a;)Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/oplus/camera/util/h;->f:Lcom/oplus/camera/util/h$a;

    invoke-static {v3}, Lcom/oplus/camera/util/h$a;->b(Lcom/oplus/camera/util/h$a;)Ljava/util/Map;

    move-result-object v3

    .line 141
    sget-object v4, Lcom/oplus/camera/util/h;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_5

    sget-object v2, Lcom/oplus/camera/util/h;->f:Lcom/oplus/camera/util/h$a;

    invoke-static {v2}, Lcom/oplus/camera/util/h$a;->c(Lcom/oplus/camera/util/h$a;)Ljava/util/List;

    move-result-object v2

    .line 139
    :cond_5
    invoke-static {p0, p1, v1, v3, v2}, Lcom/oplus/camera/l/c;->a(Landroid/content/Context;Lcom/oplus/camera/q$a;Ljava/util/Map;Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 143
    :cond_6
    invoke-static {p0, p1}, Lcom/oplus/camera/util/h;->g(Landroid/content/Context;Lcom/oplus/camera/q$a;)Ljava/lang/String;

    move-result-object p0

    .line 146
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAdressInfoByAddress, currentAdress: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    .line 117
    :cond_7
    :goto_1
    iget-object p0, p1, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Lcom/oplus/camera/q$a;)Ljava/lang/String;
    .locals 2

    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentCity, mCameraAddress, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationHelper"

    invoke-static {v1, v0}, Lcom/oplus/camera/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/h;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    .line 240
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/h;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/h;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object p0, p0, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    return-object p0

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/h;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    iget-object p0, p0, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    return-object p0

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 249
    iget-object p0, p0, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    return-object p0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 253
    iget-object p0, p0, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    return-object p0

    .line 255
    :cond_4
    iget-object p0, p0, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    return-object p0

    .line 241
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static a()V
    .locals 1

    .line 392
    new-instance v0, Lcom/oplus/camera/util/h$1;

    invoke-direct {v0}, Lcom/oplus/camera/util/h$1;-><init>()V

    invoke-static {v0}, Lcom/oplus/camera/util/Util;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 266
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/h;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic b()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 41
    sget-object v0, Lcom/oplus/camera/util/h;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 221
    :cond_0
    iget-object v1, p1, Lcom/oplus/camera/q$a;->h:Ljava/lang/String;

    const-string v2, "TW"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 225
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f10043b

    .line 226
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 228
    iget-object v1, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    .line 229
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object p1, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return v2

    :cond_4
    return v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 275
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/h;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic c()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/oplus/camera/util/h;->e()V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 301
    :cond_0
    iget-object v1, p1, Lcom/oplus/camera/q$a;->h:Ljava/lang/String;

    const-string v2, "MO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 305
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f100232

    .line 306
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 308
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

    .line 309
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
    const v1, 0x7f030056

    .line 313
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 315
    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, p0, v3

    .line 316
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

    .line 317
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

.method private static c(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 284
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/h;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 41
    invoke-static {}, Lcom/oplus/camera/util/h;->f()V

    return-void
.end method

.method public static d(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z
    .locals 9

    .line 326
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03003f

    .line 327
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 329
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 330
    iget-object v5, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f030053

    .line 331
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 333
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 334
    iget-object v8, p1, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static d(Ljava/lang/String;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 293
    :cond_0
    sget-object v0, Lcom/oplus/camera/util/h;->d:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private static e()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "LocationHelper"

    const-string v1, "parseSensorAreaConfigFromAsset"

    .line 415
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sensor_area.json"

    .line 417
    invoke-static {v1}, Lcom/oplus/camera/util/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sensor_area_replace.json"

    .line 418
    invoke-static {v2}, Lcom/oplus/camera/util/Util;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 419
    invoke-static {v1}, Lcom/oplus/camera/util/h;->e(Ljava/lang/String;)V

    .line 420
    invoke-static {v2}, Lcom/oplus/camera/util/h;->f(Ljava/lang/String;)V

    const-string v1, "parseSensorAreaConfigFromAsset X"

    .line 422
    invoke-static {v0, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static e(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 441
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "version"

    .line 442
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSensorAreaConfigFromJson, sSensorAreaConfig.version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oplus/camera/util/h;->f:Lcom/oplus/camera/util/h$a;

    invoke-static {v2}, Lcom/oplus/camera/util/h$a;->d(Lcom/oplus/camera/util/h$a;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", jsonVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocationHelper"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    sget-object v1, Lcom/oplus/camera/util/h;->f:Lcom/oplus/camera/util/h$a;

    invoke-static {v1}, Lcom/oplus/camera/util/h$a;->d(Lcom/oplus/camera/util/h$a;)I

    move-result v1

    if-lt v1, p0, :cond_1

    return-void

    :cond_1
    const-string v1, "areas"

    .line 451
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 452
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 453
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    .line 456
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "disputingParty"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 457
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_2

    .line 460
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 464
    :cond_3
    sget-object v0, Lcom/oplus/camera/util/h;->f:Lcom/oplus/camera/util/h$a;

    invoke-static {v0, p0}, Lcom/oplus/camera/util/h$a;->a(Lcom/oplus/camera/util/h$a;I)I

    .line 465
    sget-object p0, Lcom/oplus/camera/util/h;->f:Lcom/oplus/camera/util/h$a;

    invoke-static {p0, v1}, Lcom/oplus/camera/util/h$a;->a(Lcom/oplus/camera/util/h$a;Ljava/util/List;)Ljava/util/List;

    return-void
.end method

.method public static e(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z
    .locals 9

    .line 345
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f03003f

    .line 346
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 348
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 349
    iget-object v5, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f030054

    .line 350
    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 351
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 352
    iget-object v8, p1, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p1, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 426
    invoke-static {}, Lcom/oplus/camera/MyApplication;->d()Landroid/content/Context;

    move-result-object v0

    const-string v1, "rom_update_info"

    const/4 v2, 0x0

    .line 427
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "sensor_area"

    .line 433
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oplus/camera/util/h;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static f(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 473
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "areas"

    .line 475
    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 476
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 477
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 478
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 481
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "keyWords"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 482
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "areaReplace"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 483
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "areaReplaceExport"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 484
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 488
    :cond_1
    sget-object p0, Lcom/oplus/camera/util/h;->f:Lcom/oplus/camera/util/h$a;

    invoke-static {p0, v0}, Lcom/oplus/camera/util/h$a;->a(Lcom/oplus/camera/util/h$a;Ljava/util/Map;)Ljava/util/Map;

    .line 489
    sget-object p0, Lcom/oplus/camera/util/h;->f:Lcom/oplus/camera/util/h$a;

    invoke-static {p0, v1}, Lcom/oplus/camera/util/h$a;->b(Lcom/oplus/camera/util/h$a;Ljava/util/Map;)Ljava/util/Map;

    return-void
.end method

.method public static f(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 367
    :cond_0
    iget-object v1, p1, Lcom/oplus/camera/q$a;->h:Ljava/lang/String;

    const-string v2, "HK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 371
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f1001f7

    .line 372
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 374
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

    .line 375
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
    const v1, 0x7f030055

    .line 379
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 381
    array-length v1, p0

    move v3, v0

    :goto_0
    if-ge v3, v1, :cond_8

    aget-object v4, p0, v3

    .line 382
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

    .line 383
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

.method private static g(Landroid/content/Context;Lcom/oplus/camera/q$a;)Ljava/lang/String;
    .locals 10

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x4

    .line 154
    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p1, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p1, Lcom/oplus/camera/q$a;->g:Ljava/lang/String;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    .line 161
    new-array v2, v5, [Ljava/lang/String;

    iget-object v7, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    aput-object v7, v2, v3

    iget-object v7, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    aput-object v7, v2, v4

    .line 168
    invoke-static {p0, p1}, Lcom/oplus/camera/util/h;->b(Landroid/content/Context;Lcom/oplus/camera/q$a;)Z

    move-result p0

    if-eqz p0, :cond_0

    move-object v1, v2

    goto :goto_0

    .line 171
    :cond_0
    iget-object p0, p1, Lcom/oplus/camera/q$a;->f:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/oplus/camera/q$a;->e:Ljava/lang/String;

    .line 172
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/oplus/camera/q$a;->d:Ljava/lang/String;

    .line 173
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_1
    const/4 p0, 0x0

    aput-object p0, v1, v6

    .line 180
    :cond_2
    :goto_0
    array-length p0, v1

    move v2, v3

    :goto_1
    const-string v7, ", "

    if-ge v2, p0, :cond_5

    aget-object v8, v1, v2

    .line 181
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    .line 185
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 186
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    :cond_4
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 193
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 194
    new-array p0, v6, [Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/camera/q$a;->a:Ljava/lang/String;

    aput-object v1, p0, v3

    iget-object v1, p1, Lcom/oplus/camera/q$a;->b:Ljava/lang/String;

    aput-object v1, p0, v4

    iget-object p1, p1, Lcom/oplus/camera/q$a;->c:Ljava/lang/String;

    aput-object p1, p0, v5

    .line 200
    array-length p1, p0

    :goto_3
    if-ge v3, p1, :cond_8

    aget-object v1, p0, v3

    .line 201
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_4

    .line 205
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_7

    .line 206
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 213
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
