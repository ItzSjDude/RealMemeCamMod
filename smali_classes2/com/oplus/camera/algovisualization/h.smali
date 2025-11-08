.class public Lcom/oplus/camera/algovisualization/h;
.super Ljava/lang/Object;
.source "NetworkAuthenticationUtils.java"


# instance fields
.field private final a:I

.field private final b:J

.field private c:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

.field private d:Landroid/content/Context;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:[J


# direct methods
.method public constructor <init>(Lcom/coui/appcompat/widget/toolbar/COUIToolbar;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 13
    iput v0, p0, Lcom/oplus/camera/algovisualization/h;->a:I

    const-wide/16 v1, 0x7d0

    .line 14
    iput-wide v1, p0, Lcom/oplus/camera/algovisualization/h;->b:J

    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/oplus/camera/algovisualization/h;->c:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 17
    iput-object v1, p0, Lcom/oplus/camera/algovisualization/h;->d:Landroid/content/Context;

    const-string v1, ""

    .line 19
    iput-object v1, p0, Lcom/oplus/camera/algovisualization/h;->e:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/oplus/camera/algovisualization/h;->f:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/oplus/camera/algovisualization/h;->g:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/oplus/camera/algovisualization/h;->h:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/oplus/camera/algovisualization/h;->i:Ljava/lang/String;

    .line 25
    new-array v0, v0, [J

    iput-object v0, p0, Lcom/oplus/camera/algovisualization/h;->j:[J

    .line 30
    iput-object p1, p0, Lcom/oplus/camera/algovisualization/h;->c:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    .line 31
    iput-object p2, p0, Lcom/oplus/camera/algovisualization/h;->d:Landroid/content/Context;

    .line 32
    iput-object p3, p0, Lcom/oplus/camera/algovisualization/h;->e:Ljava/lang/String;

    .line 33
    iput-object p4, p0, Lcom/oplus/camera/algovisualization/h;->f:Ljava/lang/String;

    .line 34
    iput-object p5, p0, Lcom/oplus/camera/algovisualization/h;->g:Ljava/lang/String;

    .line 35
    iput-object p6, p0, Lcom/oplus/camera/algovisualization/h;->h:Ljava/lang/String;

    .line 36
    iput-object p7, p0, Lcom/oplus/camera/algovisualization/h;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/oplus/camera/algovisualization/h;)[J
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/h;->j:[J

    return-object p0
.end method

.method static synthetic a(Lcom/oplus/camera/algovisualization/h;[J)[J
    .locals 0

    .line 12
    iput-object p1, p0, Lcom/oplus/camera/algovisualization/h;->j:[J

    return-object p1
.end method

.method static synthetic b(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/h;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/oplus/camera/algovisualization/h;)Landroid/content/Context;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/h;->d:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/h;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/h;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/h;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/oplus/camera/algovisualization/h;)Ljava/lang/String;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/oplus/camera/algovisualization/h;->h:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/oplus/camera/algovisualization/h;->c:Lcom/coui/appcompat/widget/toolbar/COUIToolbar;

    new-instance v1, Lcom/oplus/camera/algovisualization/h$1;

    invoke-direct {v1, p0}, Lcom/oplus/camera/algovisualization/h$1;-><init>(Lcom/oplus/camera/algovisualization/h;)V

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/widget/toolbar/COUIToolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
