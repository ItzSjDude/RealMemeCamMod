.class public Lcom/oplus/camera/statistics/model/ProfessionalMsgData;
.super Ljava/lang/Object;
.source "ProfessionalMsgData.java"


# static fields
.field public static final VALUE_PROFESSION_SAVE:Ljava/lang/String; = "save"

.field public static final VALUE_PROFESSION_SUPER_RAW:Ljava/lang/String; = "super_raw"

.field public static final VALUE_PROFESSION_USE:Ljava/lang/String; = "use"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildParameterSaving(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 31
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "off"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static buildPhotoFormat(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "off"

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "jpeg"

    return-object p0

    :cond_0
    const-string v0, "on"

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "raw"

    return-object p0

    :cond_1
    const-string v0, "super_raw"

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
