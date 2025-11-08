.class Lcom/oplus/compat/os/EnvironmentNative$ReflectInfo;
.super Ljava/lang/Object;
.source "EnvironmentNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/os/EnvironmentNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectInfo"
.end annotation


# static fields
.field private static getExternalStorageDirectory:Lcom/oplus/utils/reflect/RefMethod;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefMethod<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static userEnvironment:Lcom/oplus/utils/reflect/RefConstructor;
    .annotation runtime Lcom/oplus/utils/reflect/MethodName;
        params = {
            I
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefConstructor<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    const-class v0, Lcom/oplus/compat/os/EnvironmentNative$ReflectInfo;

    const-string v1, "android.os.Environment$UserEnvironment"

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/oplus/utils/reflect/RefConstructor;
    .locals 1

    .line 26
    sget-object v0, Lcom/oplus/compat/os/EnvironmentNative$ReflectInfo;->userEnvironment:Lcom/oplus/utils/reflect/RefConstructor;

    return-object v0
.end method

.method static synthetic access$300()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    .line 26
    sget-object v0, Lcom/oplus/compat/os/EnvironmentNative$ReflectInfo;->getExternalStorageDirectory:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
