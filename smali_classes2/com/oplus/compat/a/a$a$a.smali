.class Lcom/oplus/compat/a/a$a$a;
.super Ljava/lang/Object;
.source "SettingsNative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/compat/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static WIFI_DISCONNECT_DELAY_DURATION:Lcom/oplus/utils/reflect/RefObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/utils/reflect/RefObject<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 200
    const-class v0, Lcom/oplus/compat/a/a$a$a;

    const-class v1, Landroid/provider/Settings$Secure;

    invoke-static {v0, v1}, Lcom/oplus/utils/reflect/RefClass;->load(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/oplus/utils/reflect/RefObject;
    .locals 1

    .line 198
    sget-object v0, Lcom/oplus/compat/a/a$a$a;->WIFI_DISCONNECT_DELAY_DURATION:Lcom/oplus/utils/reflect/RefObject;

    return-object v0
.end method
