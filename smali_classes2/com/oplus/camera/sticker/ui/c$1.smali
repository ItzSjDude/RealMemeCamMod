.class Lcom/oplus/camera/sticker/ui/c$1;
.super Ljava/util/LinkedHashMap;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/camera/sticker/ui/c;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oplus/camera/sticker/ui/c;

.field final synthetic val$capacity:I


# direct methods
.method constructor <init>(Lcom/oplus/camera/sticker/ui/c;IFZI)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/oplus/camera/sticker/ui/c$1;->this$0:Lcom/oplus/camera/sticker/ui/c;

    iput p5, p0, Lcom/oplus/camera/sticker/ui/c$1;->val$capacity:I

    invoke-direct {p0, p2, p3, p4}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method protected removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)Z"
        }
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/oplus/camera/sticker/ui/c$1;->size()I

    move-result v0

    iget p0, p0, Lcom/oplus/camera/sticker/ui/c$1;->val$capacity:I

    if-le v0, p0, :cond_0

    .line 91
    invoke-static {}, Lcom/oplus/camera/sticker/ui/c;->c()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
