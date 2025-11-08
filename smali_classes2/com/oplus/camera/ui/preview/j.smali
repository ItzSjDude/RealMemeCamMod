.class public Lcom/oplus/camera/ui/preview/j;
.super Ljava/lang/Object;
.source "FaceBean.java"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/l;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/l;",
            ">;)V"
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/j;->a:Ljava/util/List;

    .line 10
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/oplus/camera/ui/preview/j;->b:Landroid/graphics/RectF;

    .line 13
    iput-object p1, p0, Lcom/oplus/camera/ui/preview/j;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oplus/camera/ui/preview/l;",
            ">;"
        }
    .end annotation

    .line 17
    iget-object p0, p0, Lcom/oplus/camera/ui/preview/j;->a:Ljava/util/List;

    return-object p0
.end method
