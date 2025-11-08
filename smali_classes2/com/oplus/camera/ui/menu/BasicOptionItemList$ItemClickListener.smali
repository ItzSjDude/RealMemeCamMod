.class Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;
.super Ljava/lang/Object;
.source "BasicOptionItemList.java"

# interfaces
.implements Lcom/oplus/camera/ui/menu/setting/CameraMenuOption$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/camera/ui/menu/BasicOptionItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;


# direct methods
.method private constructor <init>(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oplus/camera/ui/menu/BasicOptionItemList;Lcom/oplus/camera/ui/menu/BasicOptionItemList$1;)V
    .locals 0

    .line 425
    invoke-direct {p0, p1}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;-><init>(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;)V
    .locals 3

    .line 428
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    invoke-static {v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->a(Lcom/oplus/camera/ui/menu/BasicOptionItemList;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 429
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object v0, v0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->r:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick, index: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BasicOptionItemList"

    invoke-static {v2, v1}, Lcom/oplus/camera/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList$ItemClickListener;->a:Lcom/oplus/camera/ui/menu/BasicOptionItemList;

    iget-object p0, p0, Lcom/oplus/camera/ui/menu/BasicOptionItemList;->t:Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;

    invoke-interface {p0, p1, v0}, Lcom/oplus/camera/ui/menu/BasicOptionItemList$OptionItemListListener;->a(Lcom/oplus/camera/ui/menu/setting/CameraMenuOption;I)V

    :cond_0
    return-void
.end method
