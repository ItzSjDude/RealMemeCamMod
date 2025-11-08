.class Lcom/oplus/compat/os/storage/StorageManagerNative$RefDiskInfo;
.super Ljava/lang/Object;
.source "StorageManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/os/storage/StorageManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefDiskInfo"
.end annotation


# static fields
.field private static isSd:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 61
    const-class v0, Lcom/oplus/compat/os/storage/StorageManagerNative$ReflectInfo;

    const-class v1, Landroid/os/storage/DiskInfo;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$200()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    .line 59
    sget-object v0, Lcom/oplus/compat/os/storage/StorageManagerNative$RefDiskInfo;->isSd:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
