.class Lcom/oplus/compat/os/PerformanceManagerNative$ReflectInfo;
.super Ljava/lang/Object;
.source "PerformanceManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/os/PerformanceManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static disableMultiThreadOptimize:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static enableMultiThreadOptimize:Lcom/oplus/utils/reflect/RefMethod;
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

    .line 16
    const-class v0, Lcom/oplus/compat/os/PerformanceManagerNative$ReflectInfo;

    const-string v1, "android.os.PerformanceManager"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    .line 14
    sget-object v0, Lcom/oplus/compat/os/PerformanceManagerNative$ReflectInfo;->disableMultiThreadOptimize:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method

.method static synthetic access$100()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    .line 14
    sget-object v0, Lcom/oplus/compat/os/PerformanceManagerNative$ReflectInfo;->enableMultiThreadOptimize:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
