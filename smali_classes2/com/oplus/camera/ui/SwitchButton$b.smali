.class Lcom/oplus/camera/ui/SwitchButton$b;
.super Ljava/lang/Object;
.source "SwitchButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/SwitchButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field a:F

.field b:F

.field c:I

.field d:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/SwitchButton$1;)V
    .locals 0

    .line 447
    invoke-direct {p0}, Lcom/oplus/camera/ui/SwitchButton$b;-><init>()V

    return-void
.end method

.method private a(Lcom/oplus/camera/ui/SwitchButton$b;)V
    .locals 1

    .line 457
    iget-boolean v0, p1, Lcom/oplus/camera/ui/SwitchButton$b;->d:Z

    iput-boolean v0, p0, Lcom/oplus/camera/ui/SwitchButton$b;->d:Z

    .line 458
    iget v0, p1, Lcom/oplus/camera/ui/SwitchButton$b;->a:F

    iput v0, p0, Lcom/oplus/camera/ui/SwitchButton$b;->a:F

    .line 459
    iget v0, p1, Lcom/oplus/camera/ui/SwitchButton$b;->b:F

    iput v0, p0, Lcom/oplus/camera/ui/SwitchButton$b;->b:F

    .line 460
    iget p1, p1, Lcom/oplus/camera/ui/SwitchButton$b;->c:I

    iput p1, p0, Lcom/oplus/camera/ui/SwitchButton$b;->c:I

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/ui/SwitchButton$b;Lcom/oplus/camera/ui/SwitchButton$b;)V
    .locals 0

    .line 447
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/SwitchButton$b;->a(Lcom/oplus/camera/ui/SwitchButton$b;)V

    return-void
.end method
