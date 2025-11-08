.class Lcom/oplus/compat/os/PowerManagerNative$RefPowerManagerInfo;
.super Ljava/lang/Object;
.source "PowerManagerNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/os/PowerManagerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RefPowerManagerInfo"
.end annotation


# static fields
.field private static getDisplayAodStatus:Lcom/oplus/utils/reflect/RefMethod;
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

    .line 44
    const-class v0, Lcom/oplus/compat/os/PowerManagerNative$RefPowerManagerInfo;

    const-class v1, Landroid/os/OplusPowerManager;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/oplus/utils/reflect/RefMethod;
    .locals 1

    .line 42
    sget-object v0, Lcom/oplus/compat/os/PowerManagerNative$RefPowerManagerInfo;->getDisplayAodStatus:Lcom/oplus/utils/reflect/RefMethod;

    return-object v0
.end method
