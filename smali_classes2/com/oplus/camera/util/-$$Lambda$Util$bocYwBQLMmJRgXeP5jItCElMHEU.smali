.class public final synthetic Lcom/oplus/camera/util/-$$Lambda$Util$bocYwBQLMmJRgXeP5jItCElMHEU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field public static final synthetic INSTANCE:Lcom/oplus/camera/util/-$$Lambda$Util$bocYwBQLMmJRgXeP5jItCElMHEU;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oplus/camera/util/-$$Lambda$Util$bocYwBQLMmJRgXeP5jItCElMHEU;

    invoke-direct {v0}, Lcom/oplus/camera/util/-$$Lambda$Util$bocYwBQLMmJRgXeP5jItCElMHEU;-><init>()V

    sput-object v0, Lcom/oplus/camera/util/-$$Lambda$Util$bocYwBQLMmJRgXeP5jItCElMHEU;->INSTANCE:Lcom/oplus/camera/util/-$$Lambda$Util$bocYwBQLMmJRgXeP5jItCElMHEU;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-static {p1, p2}, Lcom/oplus/camera/util/Util;->lambda$bocYwBQLMmJRgXeP5jItCElMHEU(Landroid/util/Size;Landroid/util/Size;)I

    move-result p0

    return p0
.end method
