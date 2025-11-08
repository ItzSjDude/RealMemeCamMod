.class Lcom/oplus/camera/ui/preview/u$a;
.super Ljava/lang/Object;
.source "PIAISceneUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/preview/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 611
    iput v0, p0, Lcom/oplus/camera/ui/preview/u$a;->a:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/preview/u$1;)V
    .locals 0

    .line 610
    invoke-direct {p0}, Lcom/oplus/camera/ui/preview/u$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 0

    .line 618
    iget p0, p0, Lcom/oplus/camera/ui/preview/u$a;->a:I

    return p0
.end method

.method public a(I)V
    .locals 0

    .line 614
    iput p1, p0, Lcom/oplus/camera/ui/preview/u$a;->a:I

    return-void
.end method
