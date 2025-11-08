.class public final synthetic Lcom/oplus/camera/util/-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/oplus/camera/util/-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/camera/util/-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg;

    invoke-direct {v0}, Lcom/oplus/camera/util/-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg;-><init>()V

    sput-object v0, Lcom/oplus/camera/util/-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg;->INSTANCE:Lcom/oplus/camera/util/-$$Lambda$bdDB5qtJ9up3KI34bj-HEph1ELg;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/util/Size;

    invoke-static {p1}, Ljava/util/Objects;->nonNull(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
