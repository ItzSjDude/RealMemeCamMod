.class Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "StorageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/os/storage/StorageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static getVolumeList:Lcom/oplus/utils/reflect/RefMethod;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        name = "getVolumeList"
        params = {
            I,
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "[",
            "Landroid/os/storage/StorageVolume;",
            ">;"
        }
    .end annotation
.end field

.field private static getVolumePaths:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static getVolumeState:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static getVolumes:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static isFileEncryptedNativeOnly:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static registerListener:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    const-class v0, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;

    const-class v1, Landroid/os/storage/StorageManager;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    .line 37
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->getVolumes:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$300()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    .line 37
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->getVolumeList:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$400()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    .line 37
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->getVolumeState:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$500()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    .line 37
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->isFileEncryptedNativeOnly:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$600()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    .line 37
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;->getVolumePaths:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
