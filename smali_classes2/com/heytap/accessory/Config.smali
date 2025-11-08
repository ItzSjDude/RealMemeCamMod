.class public Lcom/heytap/accessory/Config;
.super Ljava/lang/Object;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/heytap/accessory/Config$Permission;
    }
.end annotation


# static fields
.field public static final OAF_LAN_VERSION:I = 0x4fb3

.field public static final SDK_LAN_VERSION:I = 0x7535

.field private static final SDK_VERSION:I = 0x7540

.field public static final SDK_VERSION_20201:I = 0x4ee9

.field private static final SDK_VERSION_NAME:Ljava/lang/String; = "3.0.16"

.field private static final TAG:Ljava/lang/String; = "Config"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSdkVersionCode()I
    .locals 1

    const/16 v0, 0x7540

    return v0
.end method

.method public static getSdkVersionName()Ljava/lang/String;
    .locals 1

    const-string v0, "3.0.16"

    return-object v0
.end method
